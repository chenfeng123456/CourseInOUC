#include <iostream>
#include <string>
#include <stack>
#include <vector>
#include <typeinfo>
#include <map>


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
    symbols["\0"] = EOE;

    return pri[symbols[a]][symbols[b]];
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
    if ((s[0] >= '0' && s[0] <= '9') || (s[0] >= 'a' && s[0] <= 'z'))
        return true;
    return false;
}

vector<string>& toRPN(vector<string> s)
{
    static vector<string> RPN;
    //stack<string> opnd;
    stack<string> optr;
    optr.push("\0");
    int i = 0;
    while (!optr.empty())
    {
        //cout << endl;
        //cout << "i = " << i << endl;
        //cout << "RPN = " << RPN << endl;
        //cout << "optr.size() = " << optr.size() << endl;
        if (i >= s.size())
            break;
        if (isdigit(s[i]))
        {
            RPN.push_back(s[i]);
            i++;
        }
        else
        {
            switch (order(optr.top(), s[i]))
            {
                case '<':
                {
                    //cout << '<' << endl;
                    optr.push(s[i]);
                    i++;
                    break;
                }
                case '=':
                {
                    //cout << '=' << endl;
                    optr.pop();
                    i++;
                    break;
                }
                case '>':
                {
                    //cout << '>' << endl;
                    string op = optr.top();
                    optr.pop();
                    RPN.push_back(op);
                    //i++;
                    break;
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

    vector<string> s;

    string c;
    while(cin >> c)
    {
        s.push_back(c);
    }
    s.push_back("\0");
    vector<string> RPN = toRPN(s);

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
            //cout << RPN[i] << "   " << tr.size() << endl;
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

    //cout << "tr.size() = " << tr.size() << endl;
    travPost(tr.top());
    cout << endl;
    return 0;
}
