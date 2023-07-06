// 查询列表页接口
const getSchedulePage = (params) => {
  return $axios({
    url: '/schedule/page',
    method: 'get',
    params
  })
}
//订单详情
const getscheduleDetailPage = (params) => {
    return $axios({
        url: '/schedule/page',
        method: 'get',
        params
    })
}


// 查看接口
const queryScheduleDetailById = (id) => {
  return $axios({
    url: `/scheduleDetail/${id}`,
    method: 'get'
  })
}

// 取消，制作，完成接口
const editScheduleDetail = (params) => {
  return $axios({
    url: '/schedule',
    method: 'put',
    data: { ...params }
  })
}
