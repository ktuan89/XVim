//
//  XVimKtuanEvaluator.m
//  XVim
//
//  Created by Anh Khuc on 11/11/13.
//
//

#import "XVimKtuanEvaluator.h"
#import "XVimInsertEvaluator.h"

@implementation XVimKtuanEvaluator

- (XVimEvaluator*)C_j{
  return [self _motionFixed:XVIM_MAKE_MOTION(MOTION_BACKWARD, CHARACTERWISE_EXCLUSIVE, LEFT_RIGHT_NOWRAP, [self numericArg])];
}

- (XVimEvaluator*)C_l{
  return [self _motionFixed:XVIM_MAKE_MOTION(MOTION_FORWARD, CHARACTERWISE_EXCLUSIVE, LEFT_RIGHT_NOWRAP, [self numericArg])];
}

/* ktuan */
- (XVimEvaluator*)C_k{
  return [self _motionFixed:XVIM_MAKE_MOTION(MOTION_LINE_FORWARD, LINEWISE, MOTION_OPTION_NONE, [self numericArg])];
}

- (XVimEvaluator*)C_i{
  return [self _motionFixed:XVIM_MAKE_MOTION(MOTION_LINE_BACKWARD, LINEWISE, MOTION_OPTION_NONE, [self numericArg])];
}

-(XVimEvaluator*)_motionFixed:(XVimMotion*)motion{
  return [self motionFixed:motion];
}

- (XVimEvaluator*)motionFixed:(XVimMotion *)motion{
  [[self sourceView] xvim_move:motion];
  return self;
}

- (XVimEvaluator*)C_v{
  return nil;
}

@end
