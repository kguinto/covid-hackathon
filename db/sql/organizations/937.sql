
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
      'MJ Medical Group',
      '6326 N Lincoln Ave
Chicago, IL 60659',
      'Chicago',
      'IL',
      'Drop off at front desk or send to attn: Dr. Jutovsky',
      'Yes',
      '41.9961259',
      '-87.717309'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MJ Medical Group'
        AND o.latitude = '41.9961259'
        AND o.longitude = '-87.717309'));

COMMIT;
