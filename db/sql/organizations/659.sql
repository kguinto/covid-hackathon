
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
      'St Luke''s University Health Network',
      '1736 Hamilton Street
Allentown, PA 18104',
      'Allentown',
      'PA',
      '',
      'Yes',
      '40.5959853',
      '-75.4930008'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Luke''s University Health Network'
        AND o.latitude = '40.5959853'
        AND o.longitude = '-75.4930008'));

COMMIT;
