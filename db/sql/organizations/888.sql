
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
      'Parkland Hospital',
      '5200 Harry Hines Blvd
Dallas, TX 75235',
      'Dallas',
      'TX',
      'Drop off at main entrance. Contact info: giving@utsouthwestern.edu',
      'Yes',
      '32.8128222',
      '-96.8356763'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Parkland Hospital'
        AND o.latitude = '32.8128222'
        AND o.longitude = '-96.8356763'));

COMMIT;
