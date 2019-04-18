#include<iostream>
#include<stack>
#include<string>
#include<vector>
#include<queue>

using namespace std;

int main()
{
    stack<int> S;
    queue<int> B;

    // input data
    int n, m;
    cin >> n >> m;
    for (int i = 0; i < n; i++)
    {
        int temp;
        cin >> temp;
        B.push(temp);
    }


    vector<string> res;
    int preMax = 0;
    int a = 1;
    while (a <= n && !B.empty())
    {
        int cur = B.front();
        B.pop();
        int offset = cur - preMax;

        if (offset >= 0)
        {
            for (int i = 0; i < offset; i++)
            {
                res.push_back("push");

                cout << "push " << a << endl;

                S.push(a++);
                if (S.size() > m)
                {
                    
                    cout << "1" << endl;
                    
                    cout << "No" << endl;
                    return 0;
                }
            }
            res.push_back("pop");

            cout << "       pop  " << S.top() << endl;
            
            S.pop();
            preMax = cur;
        }
        else
        {
            if (S.top() != cur)
            {
                
                cout << "2" << endl;
                
                cout << "No" << endl;
                return 0;
            }
            res.push_back("pop");
            
            cout << "       pop  " << S.top() << endl;
            
            S.pop();
        }
    }

    while (!B.empty())
    {
        int cur = B.front();
        B.pop();
        if (cur != S.top())
        {

            cout << "3" << endl;
            
            cout << "No" << endl;
            return 0;
        }
        res.push_back("pop");

        cout << "       pop  " << S.top() << endl;
        S.pop();
    }

    cout << endl << endl;

    for (int i = 0; i < res.size(); i++)
        cout << res[i] << endl;

    return 0;
}
