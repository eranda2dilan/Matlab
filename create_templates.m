function chractor = create_templates()
clc, clear all, close all

A = imread('letters_numbers\a.bmp'); N = imread('letters_numbers\n.bmp');
B = imread('letters_numbers\b.bmp'); O = imread('letters_numbers\o.bmp');
C = imread('letters_numbers\c.bmp'); P = imread('letters_numbers\p.bmp');
D = imread('letters_numbers\d.bmp'); Q = imread('letters_numbers\q.bmp');
E = imread('letters_numbers\e.bmp'); R = imread('letters_numbers\r.bmp');
F = imread('letters_numbers\f.bmp'); S = imread('letters_numbers\s.bmp');
G = imread('letters_numbers\g.bmp'); T = imread('letters_numbers\t.bmp');
H = imread('letters_numbers\h.bmp'); U = imread('letters_numbers\u.bmp');
I = imread('letters_numbers\i.bmp'); V = imread('letters_numbers\v.bmp');
J = imread('letters_numbers\j.bmp'); W = imread('letters_numbers\w.bmp');
K = imread('letters_numbers\k.bmp'); X = imread('letters_numbers\x.bmp');
L = imread('letters_numbers\l.bmp'); Y = imread('letters_numbers\y.bmp');
M = imread('letters_numbers\m.bmp'); Z = imread('letters_numbers\z.bmp');

letter = [A B C D E F G H I J K L M N O P Q R S T V W X Y Z];
chraractor = [letter];

imshow(A);

end


