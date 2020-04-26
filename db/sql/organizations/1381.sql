
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
      'Mercy Fitzgerald',
      '1500 Lansdowne Ave
Darby, PA 19023',
      'Philadelphia',
      'PA',
      'Drop off at donation center (1500 Lansdowne Avenue Darby, Pennsylvania 19023; West Lobby entrance near security desk)',
      'Yes, but products need to be unused',
      '39.9266094',
      '-75.2693679'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Fitzgerald'
        AND o.latitude = '39.9266094'
        AND o.longitude = '-75.2693679'));

COMMIT;
