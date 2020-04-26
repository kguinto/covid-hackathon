
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
      'Jefferson Torresdale Hospital',
      '10800 Knights Rd
Philadelphia, PA 19114',
      'Philadelphia',
      'PA',
      'Main Lobby',
      'No',
      '40.0716695',
      '-74.9832205'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0716695'
        AND o.longitude = '-74.9832205'));

COMMIT;
