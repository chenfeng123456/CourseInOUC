#include <iostream>
#include <vector>
#include <queue>
using namespace std;


bool linked(vector< vector<int> > &towns, int i)
{
    for (int j = 1; j < towns[i].size(); j++)
    {
        if (towns[i][j])
            return true;
    }
    return false;
}

int main()
{
    int n, m;
    cin >> n >> m;

    // 0 -> undiscovered; 1, -1 -> wave band
    vector<int> status(n+1, 0);
    vector< vector<int> > towns(n+1, vector<int>(n+1, 0));

    for (int i = 0; i < m; i++)
    {
        //cout << towns.size() << "  " << towns[0].size() << endl;
        int t1, t2;
        cin >> t1 >> t2;
        towns[t1][t2] = 1;
        towns[t2][t1] = 1;
    }

    //find the first town which is not isolated
    int start = 1;
    for (; start <= n; start++)
    {
        if (linked(towns, start))
            break;
    }
    if (start > n)
    {
        cout << "start > n" << endl;
        cout << 1 << endl;
        return 0;
    }
    //cout << "start = " << start << endl;

    int wave = 1;
    status[start] = wave;
    queue<int> q;
    q.push(start);
    while (!q.empty())
    {
        wave = -wave;
        int v = q.front();
        q.pop();
        //cout << endl << "v = " << v << endl;

        for (int u = 1; u <= n; u++)
        {
            if (towns[v][u])
            {
                if (status[u] == status[v])
                {
                    //cout << "status[" << u << "] = " << status[u] << endl;
                    //cout << "status[" << v << "] = " << status[v] << endl;
                    cout << -1 << endl;
                    return 0;
                }
                else if (status[u] == 0)
                {
                    q.push(u);
                    status[u] = wave;
                }
            }
        }
    }

    cout << 1 << endl;

    return 0;
}
