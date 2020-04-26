
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
      'Virginia Interventional and Vascular Associates',
      '10401 Spotsylvania Ave #203
Fredericksburg, VA 22408',
      'Fredericksburg',
      'VA',
      'Attn Dr. Darden',
      'Yes',
      '38.2427845',
      '-77.4962767'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Interventional and Vascular Associates'
        AND o.latitude = '38.2427845'
        AND o.longitude = '-77.4962767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Interventional and Vascular Associates'
        AND o.latitude = '38.2427845'
        AND o.longitude = '-77.4962767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Interventional and Vascular Associates'
        AND o.latitude = '38.2427845'
        AND o.longitude = '-77.4962767'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Interventional and Vascular Associates'
        AND o.latitude = '38.2427845'
        AND o.longitude = '-77.4962767'));

COMMIT;
