
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
      'NOELA Community Health Care',
      '13085 Chef Menteur Hwy
New Orleans, LA 70129',
      'NEW ORLEANS',
      'LA',
      '13085 Chef Menteur Hwy',
      'Yes',
      '30.0304801',
      '-89.931388'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NOELA Community Health Care'
        AND o.latitude = '30.0304801'
        AND o.longitude = '-89.931388'));

COMMIT;
