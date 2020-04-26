
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
      'Mosaic Health Services ',
      '105 E Norfolk Ave #200
Norfolk, NE 68701',
      'Norfolk ',
      'NE',
      'Call 402-640-1439 upon arrival/delivery, as doors are currently locked with no outside visitors allowed indoors ',
      'Yes',
      '42.0337352',
      '-97.4057772'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mosaic Health Services '
        AND o.latitude = '42.0337352'
        AND o.longitude = '-97.4057772'));

COMMIT;
