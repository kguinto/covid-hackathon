
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
      'New York Army National Guard 2/106 RTI  ',
      '11 Bear Mountain Bridge Rd
Cortlandt, NY 10567',
      'Cortlandt Manor',
      'NY',
      'Attn: SFC Woyasz',
      'No',
      '41.2992871',
      '-73.941701'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New York Army National Guard 2/106 RTI  '
        AND o.latitude = '41.2992871'
        AND o.longitude = '-73.941701'));

COMMIT;
