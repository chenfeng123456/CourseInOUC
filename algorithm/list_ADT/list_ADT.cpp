#include<iostream>

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
        T remove(Node<T>* r);
        int clear();
        T lazeDel(Node<T>* r);
        Node<T>* getP(int r);
        void print();
        Node<T>* getHeader() {return header;}
        Node<T>* getTrailer() {return trailer;}
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
    return x;
}

template <typename T>
T List<T>::remove(Node<T>* r)
{
    T e = r->data;
    r->pred->succ = r->succ;
    r->succ->pred = r->pred;
    delete r;
    _size--;
    if (r->deleted) _delNum--;
    return e;
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
    if (_size == _delNum)
        clear();
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
    }

    return p;
}

template <typename T>
void List<T>::print()
{
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
    cout << "L: ";
    while (pp != trailerP)
    {
        int offset = pp->data - pre;
        while (0 < offset)
        {
            pl = pl->succ;
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
            L.lazeDel(L.getP(r));
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
        

        L.print();
    }
}
