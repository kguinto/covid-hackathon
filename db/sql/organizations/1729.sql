
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
      'Kaiser Permanente ',
      '901 Nevin Ave
Richmond, CA 94801',
      'Richmond',
      'CA',
      'Curbside outside hospital lobby. Coordinate w/ me via text/phone 510-932-3801',
      'Yes',
      '37.9371877',
      '-122.3605559'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente '
        AND o.latitude = '37.9371877'
        AND o.longitude = '-122.3605559'));

COMMIT;
