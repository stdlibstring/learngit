#include <stdio.h>

int Grade[1];
int Degree[1];
int Number[1];
int grade_mul;
int degree_mul;

void StudentNumber(int u[], int v[], int k[]) {
    int grade;
    int degree;
    int number;
    int result;
    grade = u[0];
    degree = v[0];
    number = k[0];
    result = grade * grade_mul + degree * degree_mul + number;
    // ��ѧ��ǰ׺���� PB ���ڴ��޸�
    printf("PB%d\n",result);
    return;
}

/**
 * @brief �޸� main �����е���Ϣ������ѧ��
 *
 * @param Grade[0]: ����꼶���� 20��21��22 ��
 * @param Degree[0]: ���רҵ���ţ���ƿ��� 11
 * @param Number[0]: ���ѧ����ţ��� 0011��Ϊ�˱�����ְ˽��ƣ����ֵ������0Ϊ��ͷ����4514 ��
 * @return int
 */
int main(void) {
    Grade[0] = 23;
    Degree[0] = 02;
    Number[0] = 465;
    grade_mul = 1000000;
    degree_mul = 10000;
    StudentNumber(Grade,Degree,Number);
    return 0;
}