#include<iostream>
#include<vector>
#include<cassert>

using namespace std;

class Graph
{
    vector < vector<int> > edge;
    int v;
    int e;
    public:
        Graph(int v_in, int e_in)
        {
            v = v_in, e = e_in;
            for (int i = 0; i < v+1; i++)
                edge.push_back(vector<int>(v+1, 0));
        }

        int find(int vertex, vector<int> &discovered);
        void print();
        int & getE(int v1, int v2)
        {
            if (v1 >= 1 && v1 <= v && v2 >= 1 && v2 <= v)
                return edge[v1][v2];
            cerr << "Out of range: " << endl;
            cerr << "v = " << v << endl;
            cerr << "v1 = " << v1 << " , v2 = " << v2 << endl;
            assert(v1 >= 1);
            assert(v2 >= 1);
            assert(v1 <= v);
            assert(v2 <= v);
        }
};

void Graph::print()
{
    for (int i = 1; i <= v; i++)                                                                                                                                                                        
    {                                                                                                                                                                                                       
        for (int j = 1; j <= v; j++)                                                                                                                                                                    
            cout << edge[i][j] << " ";                                                                                                                                                                      
        cout << endl;                                                                                                                                                                                       
    } 
}

int Graph::find(int vertex, vector<int> &discovered)
{
    discovered[vertex] = 1;
    int res = 0;

    for (int i = 1; i <= v; i++)
    {
        if (discovered[edge[vertex][i]])
        {
            int temp = find(i, discovered);
            res = (res < temp ? temp : res);
        }
    }

    return ++res;
}



int main()
{
    int res = 0;

    int towns, roads;
    cin >> towns >> roads;

    Graph graph(towns, roads);

    for (int i = 0; i < roads; i++)
    {
        int v1, v2;
        cin >> v1 >> v2;
        graph.getE(v1, v2) = 1;
    }

    vector<int> discovered(towns+1, 0);
    for (int i = 1; i <= towns; i++)
    {
        int temp = graph.find(i, discovered);
        res = (res < temp ? temp : res);
    }

    cout << res << endl;

    //graph.print();
}
