
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
      'Great Lakes Physicians',
      '414 W Wackerly
Midland, MI 48640',
      'Midland',
      'MI',
      'ATTN Shay Raleigh',
      'Yes',
      '43.6551466',
      '-84.2313462'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Great Lakes Physicians'
        AND o.latitude = '43.6551466'
        AND o.longitude = '-84.2313462'));

COMMIT;