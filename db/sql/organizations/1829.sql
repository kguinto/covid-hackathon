
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
      'Hospital UPR Federico Trilla',
      'km 8. P.R, 3 Cll 3
Carolina, 00984 PR',
      'Carolina',
      'PR',
      'Curbside',
      'Yes',
      '18.4178951',
      '-65.9745101'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital UPR Federico Trilla'
        AND o.latitude = '18.4178951'
        AND o.longitude = '-65.9745101'));

COMMIT;
