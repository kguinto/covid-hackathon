
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
      'Stonebrook Health and Rehabilitation ',
      '350 De Soto Dr
Los Gatos, CA 95032',
      'Los Gatos ',
      'CA',
      '350 De Soto Dr, Los Gatos, CA 95032',
      'Yes',
      '37.2448457',
      '-121.9470107'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebrook Health and Rehabilitation '
        AND o.latitude = '37.2448457'
        AND o.longitude = '-121.9470107'));

COMMIT;
