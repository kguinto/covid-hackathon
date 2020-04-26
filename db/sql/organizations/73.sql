
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
      'INTEGRIS Baptist Medical Center ',
      '3300 Northwest Expy
Oklahoma City, OK 73112',
      'Oklahoma City',
      'OK',
      'Dropoff on East Side',
      'Unsure',
      '35.5292451',
      '-97.5756798'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'INTEGRIS Baptist Medical Center '
        AND o.latitude = '35.5292451'
        AND o.longitude = '-97.5756798'));

COMMIT;
