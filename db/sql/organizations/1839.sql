
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
      'Mobile Medical Associates ',
      '260 Cardinal Trail
Stuart, FL 34997',
      'Stuart',
      'FL',
      '260 South East Cardinal Trail',
      'Yes',
      '27.1065552',
      '-80.2502691'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Associates '
        AND o.latitude = '27.1065552'
        AND o.longitude = '-80.2502691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Associates '
        AND o.latitude = '27.1065552'
        AND o.longitude = '-80.2502691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Associates '
        AND o.latitude = '27.1065552'
        AND o.longitude = '-80.2502691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Associates '
        AND o.latitude = '27.1065552'
        AND o.longitude = '-80.2502691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile Medical Associates '
        AND o.latitude = '27.1065552'
        AND o.longitude = '-80.2502691'));

COMMIT;
