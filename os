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

printf("\n\n enter the total no of resources:");
scanf("%d",&r);

printf("\n\nenter the max value for all process\:");
for(i=0;i<p;i++)
{
printf("\n for process %d:",i+1);
for(j=0;j<r;j++)
scanf("%d",&Max[i][j]);
}
printf("\n\n enter the allocation for all process:");
for(i=0; i<p; i++)
{
printf("\n for process %d:",i+1);
for(j=0;j<r;j++)
scanf("%d",&allocation[i][j]);
}
printf("\n\n enter the total available resources:");
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
process =-1;
for (i=0;i<p;i++)
   {
if (completed[i]=0)
{
process=i;
for(j=0;j<r;j++)
{
if(available[j]<need[i][j])
{
process=-1;
break;
}
}
}
if(process != -1)
break;
}
if(process!=-1)
{
printf("\nprocess %d runs to completion",process +1);
safesequence[count]=process +1;
count++;
for(j=0;j<r;j++)
{
available[j] +=allocation[process][j];
allocation[process][j]=0;
Max[process][j]=0;
completed[process]=1;
}
}
}
while(count != p && process != -1);

if(count == p)
{
	printf("\nthe system is in a safe state!!\n");
	printf("Safe sequence : < ");
	for( i = 0; i < p; i++)
			printf("%d  ", safesequence[i]);
	printf(">\n");
}
else
	printf("\nThe system is in an unsafe state!!");
}


