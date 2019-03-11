#include<iostream>
#include<list>

using namespace std;

list<char>::iterator find(list<char>::iterator &start, list<char> &balls)
{
    list<char>::iterator left = start, right = start;
    while (left != balls.begin() && *left == *start)
        left--;
    while (right != balls.end() && *right == *start)
        right++;
    
    if (left == balls.begin() && *left == *start)
        start = balls.begin();
    else
        start = ++left;
    return right;

}


bool ablat(list<char>::iterator &start, list<char>::iterator &end, list<char> &balls)
{
    bool flag = false;
    int count = 0;
    for (list<char>::iterator i = start; i != end; i++)
        if (++count >= 3)
        {
            flag = true;
            break;
        }
    if (flag)
        while (start != end)
            start = balls.erase(start);

    //if (flag && start != balls.begin())
    if (start == balls.end())
        start--;

    //cout << *start << "   ";
    return flag;
}



int main()
{
    list<char> balls;
    char c;
    while (1)
    {
        cin.get(c);

        if (c == '\n')
            break;
        balls.push_back(c);
    }

    int n;
    cin >> n;
    while (n > 0)
    {
        int index;
        char ball;
        cin >> index >> ball;
        list<char>::iterator start = balls.begin();
        for (int i = 0; i < index; i++)
            start++;

        balls.insert(start, ball);
        start--;

        list<char>::iterator end = find(start, balls);
        while(ablat(start, end, balls))
        {
            end = find(start, balls);
        }


        if (!balls.size())
            cout << "-";
        else
            for (list<char>::iterator i = balls.begin(); i != balls.end(); i++)
                cout << *i;
       

        cout << endl;
        n--;
    }

    return 0;
}
