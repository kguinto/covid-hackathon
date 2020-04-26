
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
      'Chicago Lakeshore Hospital',
      '4840 N Marine Dr
Chicago, IL 60640',
      'Chicago',
      'IL',
      'Leave at front desk with receptionist attn: Dr. Jutovsky',
      'Yes',
      '41.9702524',
      '-87.650596'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Lakeshore Hospital'
        AND o.latitude = '41.9702524'
        AND o.longitude = '-87.650596'));

COMMIT;
