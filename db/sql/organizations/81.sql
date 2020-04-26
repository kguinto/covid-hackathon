
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
      'UC Davis Medical Center',
      '2315 Stockton Blvd
Sacramento, CA 95817',
      'Sacramento',
      'CA',
      'Contact UC Davis Head of Supply Jita Buno jpbuno@ucdavis.edu | Residential dropoff/mail: ATTN: Donation Zongyin Hao, 5116 Infinity Ct, Carmichael, CA 95608',
      'Yes',
      '38.5549492',
      '-121.4546344'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'UC Davis Medical Center'
        AND o.latitude = '38.5549492'
        AND o.longitude = '-121.4546344'));

COMMIT;
