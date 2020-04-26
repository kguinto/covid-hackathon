
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
      'Dispatch Health -Atlanta',
      '5885 Glenridge Ave ste 100
Atlanta, GA 30328',
      'Atlanta',
      'GA',
      'Drop off in front of door in inside hallway ',
      'Yes',
      '33.9163987',
      '-84.359093'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dispatch Health -Atlanta'
        AND o.latitude = '33.9163987'
        AND o.longitude = '-84.359093'));

COMMIT;
