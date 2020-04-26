
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
      'Bertha Volunteer Ambulance Service ',
      '127 2nd Ave NW
Bertha, MN 56437',
      'Bertha ',
      'MN',
      'Atta Chief VanDenheuvel ',
      'Yes',
      '46.2680659',
      '-95.065543'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Bertha Volunteer Ambulance Service '
        AND o.latitude = '46.2680659'
        AND o.longitude = '-95.065543'));

COMMIT;
