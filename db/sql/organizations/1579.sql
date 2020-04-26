
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
      'New York Doctors Primary and Pulmonary Care',
      '53-14 Roosevelt Ave 3rd floor
Flushing, NY 11377',
      'Woodside',
      'NY',
      '',
      'Yes',
      '40.7444198',
      '-73.9110806'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7444198'
        AND o.longitude = '-73.9110806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7444198'
        AND o.longitude = '-73.9110806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7444198'
        AND o.longitude = '-73.9110806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7444198'
        AND o.longitude = '-73.9110806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7444198'
        AND o.longitude = '-73.9110806'));

COMMIT;
