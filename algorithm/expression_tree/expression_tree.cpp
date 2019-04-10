#include <iostream>
#include <string>
#include <stack>
#include <vector>
#include <typeinfo>
#include <map>
#include <stdio.h>


using namespace std;
#define N_OPTR 9
typedef enum { ADD, SUB, MUL, DIV, POW, FAC, L_P, R_P, EOE } Operator;
 //             +    -    *    /    ^    !    (    )    \0

const char pri[N_OPTR][N_OPTR] =
{
'>',   '>',   '<',   '<',   '<',   '<',   '<',   '>',   '>',
'>',   '>',   '<',   '<',   '<',   '<',   '<',   '>',   '>',
'>',   '>',   '>',   '>',   '<',   '<',   '<',   '>',   '>',
'>',   '>',   '>',   '>',   '<',   '<',   '<',   '>',   '>',
'>',   '>',   '>',   '>',   '>',   '<',   '<',   '>',   '>',
'>',   '>',   '>',   '>',   '>',   '>',   ' ',   '>',   '>',
'<',   '<',   '<',   '<',   '<',   '<',   '<',   '=',   ' ',
' ',   ' ',   ' ',   ' ',   ' ',   ' ',   ' ',   ' ',   ' ',
'<',   '<',   '<',   '<',   '<',   '<',   '<',   ' ',   '='
};


#define IsRoot ( !((x).parent))
#define IsLc(x) ( ! IsRoot(x) && ( &(x) == (x).parent->lc))
#define IsRc(x) ( ! IsRoot(x) && ( &(x) == (x).parent->rc))
//#define FromParentTo(x) (IsRoot(x)

char order(string a, string b)
{
    static map<string, int> symbols;
    symbols["+"] = ADD;
    symbols["-"] = SUB;
    symbols["*"] = MUL;
    symbols["/"] = DIV;
    symbols["^"] = POW;
    symbols["!"] = FAC;
    symbols["("] = L_P;
    symbols[")"] = R_P;
    symbols["\\0"] = EOE;

    char res = '\0';
    if (symbols.find(a) != symbols.end() && symbols.find(b) != symbols.end())
        res = pri[symbols[a]][symbols[b]];
    else
        throw "Illegal expresssion!";

    return res;
}

template <typename T>
class Node
{
public:
    T data;
    Node<T> *parent;
    Node<T> *lc;
    Node<T> *rc;
    int height;

    Node() : parent(NULL), lc(NULL), rc(NULL), height(0) {}
    Node(T e, Node<T> *p=NULL, Node<T> *l=NULL, Node<T> *r=NULL, int h=0) :
        data(e), parent(p), lc(l), rc(r), height(h) {}
    Node<T> *insertAsLc(Node<T> *e);
    Node<T> *insertAsRc(Node<T> *e);
};
template <typename T>
Node<T>* Node<T>::insertAsLc(Node<T> *e)
{
    lc = e;
    e->parent = this;
    return e;
}
template <typename T>
Node<T>* Node<T>::insertAsRc(Node<T> *e)
{
    rc = e;
    e->parent = this;
    return e;
}



template <typename T>
void travPost(Node<T> *x)
{
    if (!x) return;
    travPost(x->lc);
    travPost(x->rc);
    cout << x->data << " ";
}

bool isdigit(string s)
{
    int i = 0;
    while ((s[i] >= '0' && s[i] <= '9') || (s[i] >= 'a' && s[i] <= 'z') || (s[i] >= 'A' && s[i] <= 'Z') || s[i] == '.')
    {
            i++;
    }
    return (i == s.length());
}

vector<string> toRPN(vector<string> s)
{
    vector<string> RPN;
    stack<string> optr;
    optr.push("\\0");
    int i = 0;
    while (!optr.empty())
    {
        if (isdigit(s[i]))
        {
            RPN.push_back(s[i]);
            i++;
        }
        else
        {
            char r;
            try
            {
               r = order(optr.top(), s[i]);
            }catch(const char* msg)
            {
                throw "Illegal expression!";
                return RPN;
            }
            switch (r)
            {
                case '<':
                {
                    optr.push(s[i]);
                    i++;
                    break;
                }
                case '=':
                {
                    optr.pop();
                    i++;
                    break;
                }
                case '>':
                {
                    string op = optr.top();
                    optr.pop();
                    RPN.push_back(op);
                    break;
                }
                default :
                {
                     throw "Illegal expression!";
                }
             }
        }
    }

    return RPN;
}


template <typename T>
void rm(Node<T> *x)
{
    if (!x) return;
    rm(x->lc);
    rm(x->rc);
    delete x;
}

template <typename T>
void remove(Node<T> *x)
{
    if (x->parent)
    {
        if (x == x->parent->lc)
            x->parent->lc = NULL;
        if (x == x->parent->rc)
            x->parent->rc = NULL;
    }
    rm(x);
}


int main()
{
    cout << "姓名：鲁国锐" << endl;
    cout << "学号：17020021031" << endl;
    cout << endl;

    vector<string> s;
    vector<string> RPN;
    while(1)
    {
        string c;
        while(cin >> c)
        {
            s.push_back(c);
        }
        s.push_back("\\0");

        try
        {
            RPN = toRPN(s);
        }catch(const char* msg)
        {
            cerr << msg <<endl;
            cin.clear();
            cin.sync();
            s.clear();
            continue;
        }
        break;
    }


    cout << "后缀表达式：            ";
    for (int i=0; i < RPN.size(); i++)
        cout << RPN[i] << " ";
    cout << endl;

    stack<Node<string>*> tr;
    for (int i=0; i < RPN.size(); i++)
    {
        string temp_op = RPN[i];
        Node<string> *p = new Node<string>(temp_op);
        if (isdigit(temp_op))
            tr.push(p);
        else
        {
            Node<string> *r = tr.top();
            tr.pop();
            // For unary operator such as "!".
            // If they are placed at the second place
            // then we shouldn't perform the operation
            // of top() or pop() on the tr. Otherwise,
            // it will be runtime error.
            Node<string> *l;
            if (!tr.empty())
                l = tr.top();
            if (temp_op != "!")
            {
                tr.pop();
            }
            p->insertAsRc(r);
            if (temp_op != "!") p->insertAsLc(l);
            tr.push(p);
        }
    }

    cout << "对表达式树进行后序遍历：";
    travPost(tr.top());
    cout << endl;
    return 0;
}
