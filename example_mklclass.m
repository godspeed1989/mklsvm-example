%
% Example of how to use the mklsvm for  classification
%

clear all
close all

addpath('./simpleMKL')

% libsvm interface
% model_rbf = svmtrain(train_labels, train_data, svmtrain_opts);
% [predicted_labels, accuracy,toss] = svmpredict(test_labels, test_data, model_rbf, '-q');

data='ionosphere';
load([data]);
[nbdata,dim]=size(x);   % 351 33
nlabels=size(y);        % 351

% binary classification with 2 types
classcode=[1 -1];       % type of labels

ntrain = 175;
ntest = nlabels - ntrain;

mkl_svm(x, y, classcode, ntrain, ntest);

%---------------------------------------------------------------------------------------
%---------------------------------------------------------------------------------------



