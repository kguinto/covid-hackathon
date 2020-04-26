
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
      'Los Altos Sub-Acute And Rehabilitation Center',
      '809 Fremont Ave
Los Altos, CA 94024',
      'Los Altos',
      'CA',
      'Attn: ERIKA FUENTES or hand off at front door. ',
      'Yes',
      '37.3565779',
      '-122.091476'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Altos Sub-Acute And Rehabilitation Center'
        AND o.latitude = '37.3565779'
        AND o.longitude = '-122.091476'));

COMMIT;
