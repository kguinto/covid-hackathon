
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
      'Kaiser Permanente - Anaheim Kraemer',
      '3440 E La Palma Ave
Anaheim, CA 92806',
      'Anaheim ',
      'CA',
      'Email jayliz2015@gmail.com to coordinate. Only brand new in package only.',
      'No',
      '33.8531351',
      '-117.8440556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('MAXAIR CAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Anaheim Kraemer'
        AND o.latitude = '33.8531351'
        AND o.longitude = '-117.8440556'));

COMMIT;
