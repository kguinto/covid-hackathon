
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
      '1st Choice Healthcare',
      '1001 N Missouri Ave
Corning, AR 72422',
      'Corning',
      'AR',
      '1001 N Missouri Ave',
      'Yes',
      '36.4208996',
      '-90.5863304'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = '1st Choice Healthcare'
        AND o.latitude = '36.4208996'
        AND o.longitude = '-90.5863304'));

COMMIT;
