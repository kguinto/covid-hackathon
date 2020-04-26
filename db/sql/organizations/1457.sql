
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
      'SNF',
      '28546 Starbright Blvd
Perrysburg, OH 43551',
      'perrysburg',
      'OH',
      'To front door and to remain outside.  Notify receptionist (ring bell)',
      'Yes',
      '41.564471',
      '-83.5335465'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'SNF'
        AND o.latitude = '41.564471'
        AND o.longitude = '-83.5335465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'SNF'
        AND o.latitude = '41.564471'
        AND o.longitude = '-83.5335465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'SNF'
        AND o.latitude = '41.564471'
        AND o.longitude = '-83.5335465'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'SNF'
        AND o.latitude = '41.564471'
        AND o.longitude = '-83.5335465'));

COMMIT;
