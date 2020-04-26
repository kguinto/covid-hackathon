
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
      'Chippenham Hospital',
      '7101 Jahnke Rd
Richmond, VA 23225',
      'Richmond',
      'VA',
      '',
      'Yes',
      '37.513886',
      '-77.5263617'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chippenham Hospital'
        AND o.latitude = '37.513886'
        AND o.longitude = '-77.5263617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chippenham Hospital'
        AND o.latitude = '37.513886'
        AND o.longitude = '-77.5263617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chippenham Hospital'
        AND o.latitude = '37.513886'
        AND o.longitude = '-77.5263617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chippenham Hospital'
        AND o.latitude = '37.513886'
        AND o.longitude = '-77.5263617'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chippenham Hospital'
        AND o.latitude = '37.513886'
        AND o.longitude = '-77.5263617'));

COMMIT;
