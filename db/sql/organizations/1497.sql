
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
      'Saint Alphonsus Medical Center',
      '4300 E Flamingo Ave
Nampa, ID 83687',
      'Nampa',
      'ID',
      'Supply Chain Receiving Dock - ATTN: Donations',
      'Yes',
      '43.5974489',
      '-116.517392'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Alphonsus Medical Center'
        AND o.latitude = '43.5974489'
        AND o.longitude = '-116.517392'));

COMMIT;
