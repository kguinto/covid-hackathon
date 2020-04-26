
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
      'Hui No Ke Ola Pono',
      '95 Mahalani St # 21
Wailuku, HI 96793',
      'Wailuku',
      'HI',
      'Drop off or mail to 95 Mahalani Street, Room 21
Hui No Ke Ola Pono, Inc.',
      'Yes',
      '20.8869248',
      '-156.488301'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hui No Ke Ola Pono'
        AND o.latitude = '20.8869248'
        AND o.longitude = '-156.488301'));

COMMIT;
