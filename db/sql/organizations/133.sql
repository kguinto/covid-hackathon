
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
      'Memorial Hospital Of Texas County',
      '520 Medical Dr
Guymon, OK 73942',
      'Guymon',
      'OK',
      'Mailing Address Attn Admin',
      'No',
      '36.6912257',
      '-101.4757109'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital Of Texas County'
        AND o.latitude = '36.6912257'
        AND o.longitude = '-101.4757109'));

COMMIT;
