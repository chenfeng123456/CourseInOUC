#include<iostream>
#include<stdio.h>

using namespace std;

// refer to 数据结构（c++语言版）
template <typename T> class vector
{
    int _size;
    int _capacity;
    T *_elem;
    protected:
        void copyFrom(T const *A, int lo, int hi)
        {
            _elem = new T[_capacity = 2 * (hi - lo)];
            _size = 0;
            while (lo < hi)
                _elem[_size++] = A[lo++];
        }
    public:
        vector(int c = 32, int s = 0, T v = 0)
        {
            _elem = new T[_capacity = c];
            for (_size = 0; _size < s; _elem[_size++] = v);
        }
        vector(T const *A, int n) {copyFrom(A, 0, n);}
        vector(T const *A, int lo, int hi) {copyFrom(A, lo, hi);}
        vector(vector<T> const &A) {copyFrom(A._elem, 0, A._size);}

        ~vector() {delete [] _elem;}
        
        T& operator[] (int r) const {return _elem[r];}


        bool empty() const {return !_size;}
        int size() const {return _size;}
        void expand()
        {
            if (_size < _capacity) return;
            if (_capacity < 32)
                _capacity = 32;
            T *oldElem = _elem;
            _elem = new T[_capacity <<= 1];
            for (int i = 0; i < _size; i++)
                _elem[i] = oldElem[i];
            delete [] oldElem;
        }
        int insert(int r, T const &e)
        {
            expand();
            for (int i = _size; i > r; i--)
                _elem[i] = _elem[i-1];
            _elem[r] = e;
            _size++;
            return r;
        }
        void push_back(T const &e)
        {
            insert(_size, e);
        }
        void erase(int lo, int hi)
        {
            if (lo == hi) return;
            while (hi < _size)
                _elem[lo++] = _elem[hi++];
            _size = lo;
            return;
        }



};


int find(int &start, vector<char> &balls)
{
    int left = start, right = start;
    while (left >= 0 && balls[left] == balls[start])
        left--;
    while(right < balls.size() && balls[right] == balls[start])
        right++;
    start = ++left;
    return right;
}

bool ablat(int &start, int &end, vector<char> &balls)
{
    bool flag = ((end - start) >= 3);
    int count = 0;
    if (flag)
        balls.erase(start, end);
    return flag;
}


int main()
{
    vector<char> balls;
    char c;
    while (1)
    {
        scanf("%c", &c);

        if (c == '\n')
            break;
        balls.push_back(c);
    }

    int n;
    scanf("%d", &n);
    while (n > 0)
    {
        int start;
        char ball;
        cin >> start >> ball;
        balls.insert(start, ball);

        int end = find(start, balls);
        
        while (ablat(start, end, balls))
        {
            end = find(start, balls);
        }

        if (balls.empty())
            printf("-");
        else
            for (int i = 0; i < balls.size(); i++)
                printf("%c", balls[i]);
        printf("\n");
        n--;
    }

    return 0;
}
