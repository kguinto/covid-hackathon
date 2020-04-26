
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
      'Richmond Ambulance Authority',
      '2400 Hermitage Rd
Richmond, VA 23220',
      'Richmond',
      'VA',
      '',
      'Yes',
      '37.565646',
      '-77.4609862'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richmond Ambulance Authority'
        AND o.latitude = '37.565646'
        AND o.longitude = '-77.4609862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richmond Ambulance Authority'
        AND o.latitude = '37.565646'
        AND o.longitude = '-77.4609862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richmond Ambulance Authority'
        AND o.latitude = '37.565646'
        AND o.longitude = '-77.4609862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Richmond Ambulance Authority'
        AND o.latitude = '37.565646'
        AND o.longitude = '-77.4609862'));

COMMIT;
