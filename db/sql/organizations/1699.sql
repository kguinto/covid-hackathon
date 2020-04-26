
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
      'Sky Ridge Medical Center',
      '10101 RidgeGate Parkway
Lone Tree, CO 80124',
      'Lone tree ',
      'CO',
      '(Mailing address) to be delivered to pharmacy upon arrival ',
      'No',
      '39.529099',
      '-104.871212'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sky Ridge Medical Center'
        AND o.latitude = '39.529099'
        AND o.longitude = '-104.871212'));

COMMIT;
