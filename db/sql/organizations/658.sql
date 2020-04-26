
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
      'Fair Acres Geriatric Center',
      '340 N. Middletown Rd,
Media, PA 19063',
      'Lima  ',
      'PA',
      'Att. Lisa Faraglia Scheduling Dept building 4',
      'Yes',
      '39.9178581',
      '-75.4430376'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fair Acres Geriatric Center'
        AND o.latitude = '39.9178581'
        AND o.longitude = '-75.4430376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fair Acres Geriatric Center'
        AND o.latitude = '39.9178581'
        AND o.longitude = '-75.4430376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fair Acres Geriatric Center'
        AND o.latitude = '39.9178581'
        AND o.longitude = '-75.4430376'));

COMMIT;
