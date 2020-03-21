#---------------------------operating sysytem project no 19-----------------------------------------------------------------------#
Q.There are 5 processes and 3 resources type resource A with 10 instances B with 5 instances and C with 7 instances consider the following and write a c code to find whether the system is in safe state or not
#-------------------------------------------------------------------------------------------------------------------------------
#include<stdio.h>
int main()
{
int Max[10][10],need[10][10],allocation[10][10],available[10],completed[10],safesequence[10];
int p,r,i,j,process,count;
count=0;

printf("enter the total no. of processes:");
scanf("%d",&p);

for(i=0;i<p;i++)
completed[i]=0;

printf("enter the total no of resources:\n\n");
scanf("%d",&r);

printf("enter the max for each process\n\n:");
for(i=0;i<p;i++)
{
printf("\n for process %d:",i+1);
for(j=0;j<r;j++)
scanf("%d",&Max[i][j]);
}
printf("\n\n enter the allocation for each process:");
for(i=0; i<p; i++)
{
printf("\n for process %d:",i+1);
for(j=0;j<r;j++)
scanf("%d",&allocation[i][j]);
}
printf("\n\n enter the available resources:");
for(i=0;i<r;i++)
scanf("%d",&available[i]);

for(i=0;i<p;i++)
for (j=0;j<r;j++)
need[i][j]=Max[i][j]-allocation[i][j];
do
{
printf("\n max matrix:\t allocation matrix:\n");
for(i=0;i<p;i++)
{
for(j=0;j<r;j++)
printf("%d",Max[i][j]);
printf("\t\t");
for(j=0;j<r;j++)
printf("%d",allocation[i][j]);
printf("\n");
}

}
