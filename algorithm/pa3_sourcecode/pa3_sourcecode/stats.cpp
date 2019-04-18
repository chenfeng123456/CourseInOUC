#include "stats.h"
#include <iostream>
#include <cmath>

stats::stats(PNG &im)
{
    for (int i=0; i < im.height(); i++)
    {
        sumRed.push_back(vector<long>(im.width()));
        sumsqRed.push_back(vector<long>(im.width()));

        sumGreen.push_back(vector<long>(im.width()));
        sumsqGreen.push_back(vector<long>(im.width()));

        sumBlue.push_back(vector<long>(im.width()));
        sumsqBlue.push_back(vector<long>(im.width()));
    }
    
    sumRed[0][0] = im.getPixel(0, 0)->r;
    sumsqRed[0][0] = pow(im.getPixel(0, 0)->r, 2);
    
    sumGreen[0][0] = im.getPixel(0, 0)->g;
    sumsqGreen[0][0] = pow(im.getPixel(0, 0)->g, 2);
    
    sumBlue[0][0] = im.getPixel(0, 0)->b;
    sumsqBlue[0][0] = pow(im.getPixel(0, 0)->b, 2);

    for (int i=1; i < im.height(); i++)
    {
        sumRed[i][0] = im.getPixel(0, i)->r + sumRed[i-1][0];
        sumsqRed[i][0] = pow(im.getPixel(0, i)->r, 2) + sumsqRed[i-1][0];

        sumGreen[i][0] = im.getPixel(0, i)->g + sumGreen[i-1][0];
        sumsqGreen[i][0] = pow(im.getPixel(0, i)->g, 2) + sumsqGreen[i-1][0];

        sumBlue[i][0] = im.getPixel(0, i)->b + sumBlue[i-1][0];
        sumsqBlue[i][0] = pow(im.getPixel(0, i)->b, 2) + sumsqBlue[i-1][0];
    }
    for (int i=1; i < im.width(); i++)
    {
        sumRed[0][i] = im.getPixel(i, 0)->r + sumRed[0][i-1];
        sumsqRed[0][i] = pow(im.getPixel(i, 0)->r, 2) + sumsqRed[0][i-1];

        sumGreen[0][i] = im.getPixel(i, 0)->g + sumGreen[0][i-1];
        sumsqGreen[0][i] = pow(im.getPixel(i, 0)->g, 2) + sumsqGreen[0][i-1];

        sumBlue[0][i] = im.getPixel(i, 0)->b +sumBlue[0][i-1];
        sumsqBlue[0][i] = pow(im.getPixel(i, 0)->b, 2) + sumsqBlue[0][i-1];
    }
    for (int i=1; i < im.height(); i++)
    {
        for (int j=1; j < im.width(); j++)
        {
            sumRed[i][j] = sumRed[i-1][j] + sumRed[i][j-1] - sumRed[i-1][j-1] + im.getPixel(j, i)->r;
            sumsqRed[i][j] = sumsqRed[i-1][j] + sumsqRed[i][j-1] -sumsqRed[i-1][j-1] + pow(im.getPixel(j, i)->r, 2);

            sumGreen[i][j] = sumGreen[i-1][j] + sumGreen[i][j-1] - sumGreen[i-1][j-1] + im.getPixel(j, i)->g;
            sumsqGreen[i][j] = sumsqGreen[i-1][j] + sumsqGreen[i][j-1] - sumsqGreen[i-1][j-1] + pow(im.getPixel(j, i)->g, 2);

            sumBlue[i][j] = sumBlue[i-1][j] + sumBlue[i][j-1] - sumBlue[i-1][j-1] + im.getPixel(j, i)->b;
            sumsqBlue[i][j] = sumsqBlue[i-1][j] + sumsqBlue[i][j-1] - sumsqBlue[i-1][j-1] + pow(im.getPixel(j, i)->b, 2);
        }
    }


    /*
    cout << "image.width() = " << im.width() << endl;
    cout << "image.height() = " << im.height() << endl;
    cout << "sumRed[0].size() = " << sumRed[0].size() << endl;
    cout << "sumRed.size() = " << sumRed.size() << endl;
    */

    cout << "im:" << endl;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 5; j++)
            cout << (long)im.getPixel(j, i)->b << "  ";
        cout << endl;
    }
    cout << endl;
    cout << "sumBlue:" << endl;
    for (int i=0; i < 5; i++)
    {
        for (int j=0; j < 5; j++)
            cout << sumBlue[i][j] << "  ";
        cout << endl;
    }
    cout << endl;
    cout << "sumsqBlue:" << endl;
    for (int i=0; i < 5; i++)
    {
        for (int j=0; j < 5; j++)
            cout << sumsqBlue[i][j] << "  ";
        cout << endl;
    }
    cout << endl;
    
    pair<int, int> ul(2, 2);
    pair<int, int> lr(2, 2);
    cout << "getSum((2,2), (2,2)):  " << getSum('b', ul, lr) << endl;
    cout << "getSum((2,2), (2,2)):  " << getSumSq('b', ul, lr) << endl;
    cout << "getavg((2,2), (2,2)):  " << (int)getAvg(ul, lr).b << endl << endl;

}

long stats::getSum(char channel, pair<int, int> ul, pair<int, int> lr)
{
    if (channel == 'r')
    {
		long rec1 = (ul.second == 0 ? 0 : sumRed[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumRed[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumRed[ul.second-1][ul.first-1]);
        return sumRed[lr.second][lr.first] - rec1 - rec2 + rec3;   
	}
    else if (channel == 'g')
    {
		long rec1 = (ul.second == 0 ? 0 : sumGreen[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumGreen[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumGreen[ul.second-1][ul.first-1]);
        return sumGreen[lr.second][lr.first] - rec1 - rec2 + rec3;
	}
    else if (channel == 'b')
    {
		long rec1 = (ul.second == 0 ? 0 : sumBlue[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumBlue[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumBlue[ul.second-1][ul.first-1]);
        return sumBlue[lr.second][lr.first] - rec1 - rec2 + rec3;
	}
    else
    {
        cerr << "Invalid channel!" << endl;
        return -1;
    }
}

long stats::getSumSq(char channel, pair<int, int> ul, pair<int, int> lr)                                                                                    
{                                                                                                                                                         
    if (channel == 'r')                                                                                                                                   
    {
        long rec1 = (ul.second == 0 ? 0 : sumsqRed[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumsqRed[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumsqRed[ul.second-1][ul.first-1]);
        return sumsqRed[lr.second][lr.first] - rec1 - rec2 + rec3;             
    }
    else if (channel == 'g')                                                                                                                              
    {
        long rec1 = (ul.second == 0 ? 0 : sumsqGreen[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumsqGreen[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumsqGreen[ul.second-1][ul.first-1]);
        return sumsqGreen[lr.second][lr.first] - rec1 - rec2 + rec3;        
    }
    else if (channel == 'b')                                                                                                                              
    {
        long rec1 = (ul.second == 0 ? 0 : sumsqBlue[ul.second-1][lr.first]);
        long rec2 = (ul.first == 0 ? 0 : sumsqBlue[lr.second][ul.first-1]);
        long rec3 = ((ul.second == 0 || ul.first == 0) ? 0 : sumsqBlue[ul.second-1][ul.first-1]);
        return sumsqBlue[lr.second][lr.first] - rec1 - rec2 + rec3;            
    }
    else                                                                                                                                                  
    {                                                                                                                                                     
        cerr << "Invalid channel!" << endl;                                                                                                               
        return -1;                                                                                                                                        
    }                                                                                                                                                     
}  

long stats::rectArea(pair<int, int> ul, pair<int, int> lr)
{
    return (lr.first - ul.first + 1) * (lr.second - ul.second + 1);
}

long stats::getScore(pair<int, int> ul, pair<int, int> lr)
{
    long R = rectArea(ul, lr);
    long rscore = getSumSq('r', ul, lr) - pow(getSum('r', ul, lr), 2) / R;
    long gscore = getSumSq('g', ul, lr) - pow(getSum('g', ul, lr), 2) / R;
    long bscore = getSumSq('b', ul, lr) - pow(getSum('b', ul, lr), 2) / R;
    return rscore + gscore + bscore;
}

RGBAPixel stats::getAvg(pair<int, int> ul, pair<int, int> lr)
{
    long R = rectArea(ul, lr);
    int avgR = getSum('r', ul, lr) / R;
    int avgG = getSum('g', ul, lr) / R;
    int avgB = getSum('b', ul, lr) / R;
    RGBAPixel avg(avgR, avgG, avgB);
    return avg;
}
