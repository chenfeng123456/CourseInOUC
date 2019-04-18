
/**
 *
 * twoDtree (pa3)
 * slight modification of a Kd tree of dimension 2.
 * twoDtree.cpp
 * This file will be used for grading.
 *
 */

#include <cmath>
#include "twoDtree.h"
#include "cs221util/RGBAPixel.h"

/* given */
twoDtree::Node::Node(pair<int,int> ul, pair<int,int> lr, RGBAPixel a)
	:upLeft(ul),lowRight(lr),avg(a),left(NULL),right(NULL),flag(-1),split_value(-1)
	{}




/* given */
twoDtree::~twoDtree(){
	clear();
}

/* given */
twoDtree::twoDtree(const twoDtree & other) {
	copy(other);
}

/* given */
twoDtree & twoDtree::operator=(const twoDtree & rhs){
	if (this != &rhs) {
		clear();
		copy(rhs);
	}
	return *this;
}

twoDtree::twoDtree(PNG & imIn){ /* your code here */ 
    im = imIn;
    stats s(imIn);
    height = imIn.height();
    width = imIn.width();
    pair<int, int> ul(0, 0);
    pair<int, int> lr(width-1, height-1);
    root = buildTree(s, ul, lr);
}


pair<int, int> split_h(stats &s, pair<int, int> ul, pair<int, int> lr)
{
    // split the rectangle horizontally
    long minScore = 2147483647;
    pair<int, int> res(lr.first, ul.second);
    pair<int, int> i(lr.first, ul.second);
    pair<int, int> j(ul.first, ul.second+1);
    for(; i.second < lr.second; i.second++, j.second++)
    {
        long score = s.getScore(ul, i);
        score += s.getScore(j, lr);
        if (score < minScore)
        {
            minScore = score;
            res.first = i.first;
            res.second = i.second;
        }
    }
    return res;
}

pair<int, int> split_v(stats &s, pair<int, int> ul, pair<int, int> lr)                                                          
{                                                                                                                               
    // split the rectangle vertically                                                                                         
    long minScore = 2147483647;                                                                                                          
    pair<int, int> res(ul.first, lr.second);                                                                                    
    pair<int, int> i(ul.first, lr.second);                                                                                      
    pair<int, int> j(ul.first+1, ul.second);                                                                                    
    for(; i.first < lr.first; i.first++, j.first++)                                                                         
    {                                                                                                                           
        long score = s.getScore(ul, i);                                                                                         
        score += s.getScore(j, lr);                                                                                             
        if (score < minScore)                                                                                                   
        {                                                                                                                       
            minScore = score;                                                                    
            res.first = i.first;
            res.second = i.second;                                                                                              
        }                                                                                                                       
    }                                                                                                                           
    return res;                                                                                                                 
}        


twoDtree::Node * twoDtree::buildTree(stats & s, pair<int,int> ul, pair<int,int> lr) {
	/* your code here */
    RGBAPixel avg = s.getAvg(ul, lr);
    Node *root = new Node(ul, lr, avg);
    int curHei = lr.second - ul.second + 1;
    int curWid = lr.first - ul.first + 1;
    //cout << curHei << ", " << curWid << endl;
  
    if (curHei == 1 && curWid == 1)
    {
        /*
        cout << "(" << ul.first << ", " << ul.second << ")   " << "(" << lr.first << ", " << lr.second << ")" << endl;
        cout << "avg = " << avg << endl;
        cout << "(x,y)=" << *im.getPixel(ul.first, ul.second) << endl;
        if (avg == *im.getPixel(ul.first, ul.second))
            cout << "True" << endl;
        else
        {
            for(int i=0; i < 100; i++)
            {
                for (int j=0; j < 100; j++)
                    cout << "**";
                cout << endl;
            }
        }
                   
            
        cout << endl;
        */
        return root;
    }
    pair<int, int> split;
    if (curHei > curWid)
    {
        split = split_h(s, ul, lr);
        root->flag = 1;
        root->split_value = split.second;
        //cout << "root->split_value = " << root->split_value << endl;
        root->left = buildTree(s, ul, split);
        split.first = ul.first;
        split.second++;
        root->right = buildTree(s, split, lr);
    }
    else
    {
        split = split_v(s, ul, lr);
        root->flag = 0;
        root->split_value = split.first;
        //cout << "root->split_value = " << root->split_value << endl;
        root->left = buildTree(s, ul, split);
        split.first++;
        split.second = ul.second;
        root->right = buildTree(s, split, lr);
    }

    //cout << "(" << ul.first << ", " << ul.second << ")   " << "(" << lr.first << ", " << lr.second << ")" << endl;

    return root;
}


RGBAPixel* twoDtree::render_helper(int const x, int const y, Node *r)
{
    if (r->left == NULL && r->right == NULL)
        return &(r->avg);
    RGBAPixel *p = NULL;
    //cout << "r->avg = " << r->avg << endl;
    //cout << "root->flag = " << r->flag << "   ";
    //cout << "r->split_value = " << r->split_value << "  ";
    //cout << "upLeft = (" << r->upLeft.first << ", " << r->upLeft.second << ")   ";
    //cout << "lowRight=(" << r->lowRight.first << ", " << r->lowRight.second << ")";
    if (r->flag == 1)
    {
        //cout << "  y = " << y << endl;
        if (y <= r->split_value)
            p = render_helper(x, y, r->left);
        else
            p = render_helper(x, y, r->right);

    }
    else
    {
        //cout << "  x = " << x << endl;
        if (x <= r->split_value)
            p = render_helper(x, y, r->left);
        else 
            p = render_helper(x, y, r->right);
    }

    if(!p)
    {
        /*
        if (r->avg == *im.getPixel(x, y))
            cout << "True" << endl;
        else
            cout << "False" << endl;
            */
        return &(r->avg);
    }
    //cout << *p << endl;
    return p;
}


PNG twoDtree::render(){
	/* your code here */
    PNG image(width, height);
    //cout << "width = " << width << "   height = " << height << endl;
    //cout << "image.width = " << image.width() << "   image.height = " << image.height() << endl;
    for (int x=0; x < width; x++)
    {
        for (int y=0; y < height; y++)
        {
            RGBAPixel* p = image.getPixel(x, y);
            cout << "x = " << x << " , y = " << y << endl;
            RGBAPixel* other = render_helper(x, y, root);
            cout << "*****" << endl;
            cout << "(x,y)=" << *im.getPixel(x, y) << endl;
            p->r = other->r; p->g = other->g; p->b = other->b; p->a = other->a;
            cout << "r = " << (int)p->r << "   g = " << (int)p->g << "   b = " << (int)p->b << endl << endl;
            /*
            if ((*p) == (*im.getPixel(x, y)))
                cout << "True" << endl;
            else
            {
                cout << "False" << endl;
            }
            */
        }
    }
    return image;
}

vector<int> twoDtree::prune_helper(Node *p, double const pct, int const tol)
{
    if (!p) 
    {
        vector<int> l;
        return l;
    }
    if (p->left == NULL && p->right == NULL)
    {
        vector<int> l;
        l.push_back(p->avg.r + p->avg.g + p->avg.b);
        return l;
    }


    vector<int> left = prune_helper(p->left, pct, tol);
    vector<int> right = prune_helper(p->right, pct, tol);
    left.insert(left.end(), right.begin(), right.end());

    int threshold = left.size();
    threshold = threshold * pct;
    int num = 0;
    for (int i=0; i < left.size(); i++)
    {
        int avgL = left[i];
        int avgP = p->avg.r + p->avg.g + p->avg.b;
        int diff = pow(avgL-avgP, 2);
        if (diff <= tol)
        {
            num++;
            if (num > threshold)
            {
                cout << (p->left == NULL) << " , " << (p->right == NULL) << endl;
                remove(p);
                break;
            }
        }
    }

    return left;
}


void twoDtree::prune(double pct, int tol){
	/* your code here */
    prune_helper(root, pct, tol);
}

void twoDtree::clear() {
	/* your code here */
    if (root)
    {
        remove(root);
        Node *old = root;
        root = NULL;
        delete old;
    }
}

void twoDtree::remove(Node *root)
{
    if (root->left)
    {
        if (root->left->left || root->left->right)
            remove(root->left);
        Node *old = root->left;
        root->left = NULL;
        delete old;
    }
    
    if (root->right)
    {
        if (root->right->left || root->right->right)
            remove(root->right);
        Node *old = root->right;
        root->right = NULL;
        delete old;
    }

    //cout << root << endl;
}

void twoDtree::copy(const twoDtree & orig){
	/* your code here */
    root = copy_helper(orig.root);
    im = orig.im;
    height = orig.height;
    width = orig.width;

}

twoDtree::Node* twoDtree::copy_helper(const Node *r)
{
    if (!r)
        return NULL;
    
    Node *root = new Node(r->upLeft, r->lowRight, r->avg);
    root->flag = r->flag;
    root->split_value = r->split_value;
    root->left = copy_helper(r->left);
    root->right = copy_helper(r->right);
    root->avg = r->avg;
    //cout << "copy " << r << endl;
    return root;
}

