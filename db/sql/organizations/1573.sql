
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
      '205 Lexington Ave
New York, NY 10016',
      'New York - Manhattan',
      'NY',
      '',
      'Yes',
      '40.7451661',
      '-73.9802632'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Doctors Primary and Pulmonary Care'
        AND o.latitude = '40.7451661'
        AND o.longitude = '-73.9802632'));

COMMIT;
