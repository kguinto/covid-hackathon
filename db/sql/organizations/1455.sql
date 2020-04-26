
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Northwestern Specialists for Women',
      '900 N Kingsbury St, Suite 130 N
Chicago, IL 60610',
      'Chicago',
      'IL',
      'In our glass enclosed vestibule or by mail',
      'No',
      '41.8987937',
      '-87.6447457'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwestern Specialists for Women'
        AND o.latitude = '41.8987937'
        AND o.longitude = '-87.6447457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwestern Specialists for Women'
        AND o.latitude = '41.8987937'
        AND o.longitude = '-87.6447457'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northwestern Specialists for Women'
        AND o.latitude = '41.8987937'
        AND o.longitude = '-87.6447457'));

COMMIT;
