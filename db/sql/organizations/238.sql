
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
      'West Hawaii Community Health Center ',
      '75-5751 Kuakini Hwy Ste 203
Kailua-Kona, HI 96740',
      'Kailua-Kona ',
      'HI',
      'ATTN: Darlene DuPont ',
      'Yes',
      '19.640467',
      '-155.9938797'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('antimicrobial cleaners (Cavicide liquid or wipes)',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hawaii Community Health Center '
        AND o.latitude = '19.640467'
        AND o.longitude = '-155.9938797'));

COMMIT;
