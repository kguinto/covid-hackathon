
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
      'The Doctors Office of West Caldwell',
      '556 Passaic Ave
West Caldwell, NJ 07006',
      'West Caldwell',
      'NJ',
      '',
      'Yes',
      '40.8490192',
      '-74.296653'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of West Caldwell'
        AND o.latitude = '40.8490192'
        AND o.longitude = '-74.296653'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of West Caldwell'
        AND o.latitude = '40.8490192'
        AND o.longitude = '-74.296653'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of West Caldwell'
        AND o.latitude = '40.8490192'
        AND o.longitude = '-74.296653'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of West Caldwell'
        AND o.latitude = '40.8490192'
        AND o.longitude = '-74.296653'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Doctors Office of West Caldwell'
        AND o.latitude = '40.8490192'
        AND o.longitude = '-74.296653'));

COMMIT;
