
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
      'Sante Home Health and Hospice ',
      '17207 N Perimeter Dr
Scottsdale, AZ 85255',
      'Scottsdale ',
      'AZ',
      'ATTN: Sante Operations - Drop off at information desk ',
      'Yes',
      '33.6419963',
      '-111.8957044'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sante Home Health and Hospice '
        AND o.latitude = '33.6419963'
        AND o.longitude = '-111.8957044'));

COMMIT;
