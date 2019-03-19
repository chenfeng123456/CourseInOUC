#include<iostream>
#include<exception>
#include<stdexcept>
using namespace std;

template <typename T> 
class Node
{
    public:
        // member variables
        T data;
        Node<T>* pred;
        Node<T>* succ;
        bool deleted;
        // constructors
        Node() : data(0), pred(NULL), succ(NULL){}
        Node(T e, Node<T>* p=NULL, Node<T>* s=NULL) : data(e), pred(p), succ(s), deleted(false) {}
        // operation interface
        //Node<T>* insertAsPred(T const& e);
        //Node<T>* insertAsSucc(T const& e);
};


template <typename T> 
class List
{
    private:
        int _size;
        Node<T>* header;
        Node<T>* trailer;
        int _delNum;
    public:
        // constructors
        List();

        // destructor
        ~List();

        // operation interfaces
        Node<T>* insert(Node<T>* r, T const& e);// insert as pred
        void push_back(T e) {insert(trailer, e);}
        Node<T>* remove(Node<T>* r);
        int clear();
        void clear_mark();
        T lazeDel(Node<T>* r);
        Node<T>* getP(int r);
        void print();
        Node<T>* getHeader() {return header;}
        Node<T>* getTrailer() {return trailer;}
        int size() {return _size;}
};
// implement the functions of the List
template <typename T>
List<T>::List()
{
    header = new Node<T>;
    trailer = new Node<T>;
    header->succ = trailer;
    header->pred = NULL;
    trailer->pred = header;
    trailer->succ = NULL;
    _size = 0;
    _delNum = 0;
}

template <typename T>
Node<T>* List<T>::insert(Node<T>* r, T const& e)
{
    // insert as pred
    Node<T>* x = new Node<T>(e, r->pred, r);
    r->pred->succ = x;
    r->pred = x;
    _size++;
    return x;
}

template <typename T>
Node<T>* List<T>::remove(Node<T>* r)
{
    r->pred->succ = r->succ;
    r->succ->pred = r->pred;
    Node<T>* p = r->succ;
    delete r;
    _size--;
    if (r->deleted) _delNum--;
    return p;
}

template <typename T>
int List<T>::clear()
{
    int oldSize = _size;
    while(0 < _size)
        remove(header->succ);
    return oldSize;
}

template <typename T>
void List<T>::clear_mark()
{
    Node<T>* p = header->succ;
    while (p != trailer)
    {
        if (p->deleted)
            p = remove(p);
        else
            p = p->succ;
    }
    _delNum = 0;
    cout << "remove all nodes marked." << endl;
}

template <typename T>
List<T>::~List()
{
    clear();
    delete header;
    delete trailer;
}

template <typename T>
T List<T>::lazeDel(Node<T>* r)
{
    T e = r->data;
    r->deleted = true;
    _delNum++;
    if (_size/2 <= _delNum)
        clear_mark();
    return e;
}

template <typename T>
Node<T>* List<T>::getP(int r)
{
    Node<T>* p = header;
    while (0 < r)
    {
        p = p->succ;
        if (!p->deleted)
            r--;
        if (p == trailer)
            throw out_of_range("Overflow!");

    }

    return p;
}

template <typename T>
void List<T>::print()
{
    if (_size == 0)
    {
        cout << "The list is empty." << endl;
        return;
    }
    Node<T>* p = header;
    while ((p = p->succ) != trailer)
        if (!p->deleted)
            cout << p->data << " ";
    cout << endl;
}




// implement PrintLots
template <typename T>
void PrintLots(List<T>& L, List<T>& P)
{
    cout << "P: ";
    P.print();
    // pl points to the header of L 
    // and pp points to the first element of P
    Node<T>* pl = L.getP(0);
    Node<T>* pp = P.getP(1);
    Node<T>* trailerP = P.getTrailer();
    int pre = 0;
    if (!L.size())
    {
        cout << "L is empty." << endl;
        return;
    }
    cout << "L: ";
    while (pp != trailerP)
    {
        int offset = pp->data - pre;
        while (0 < offset)
        {
            pl = pl->succ;
            try
            {
                if (pl == L.getTrailer())
                    throw out_of_range("Overflow!");
            }catch(out_of_range &e)
            {
                cerr << endl << "Index " << pp->data <<" is out of range. " << e.what() << endl;
                return;
            }
            if (!pl->deleted)
                offset--;
        }
        cout << pl->data << " ";
        pre = pp->data;
        pp = pp->succ;
    }
    cout << endl;
}




int main()
{
    cout << "姓名：鲁国锐" << endl;
    cout << "学号：17020021031" << endl;
    cout << endl;
    cout << "instructions:" << endl;
    cout << "delete: 后跟一数字，执行懒惰删除操作" << endl;
    cout << "PrintLots: 后跟若干数字，务以空格分隔，以回车结束输入，为链表P的节点值，执行PrintLots操作" << endl;
    cout << "end: 结束程序" << endl;

    cout << endl << "请输入L中各节点的值，务必以空格分隔，以回车结束输入：" << endl;

    List<int> L;

    while (1)
    {
        int data;
        char c;
        cin >> data;
        cin.get(c);
        L.push_back(data);
        if (c == '\n')
            break;
    }
  
    while(1)
    {
        string instruction;
        cin >> instruction;
        if (instruction == "end")
            break;
        else if (instruction == "delete")
        {
            int r;
            cin >> r;
            Node<int>* temp;
            try
            {
                temp = L.getP(r);
            }catch(out_of_range &e)
            {
                cerr << "Index " << r << " is out of range. " << e.what() << endl;
                continue;
            }
            L.lazeDel(temp);
        }
        else if (instruction == "PrintLots")
        {
            List<int> P;
            while (1)
            {
                int data;
                char c;
                cin >> data;
                cin.get(c);
                P.push_back(data);
                if (c == '\n')
                    break;
            }
            PrintLots(L, P);
        }
        else
        {
            cout << "Invalide input, please enter again." << endl;
            continue;
        }
        

        L.print();
    }
}
