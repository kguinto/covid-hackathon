
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
      'Sequoia Home Health and Hospice',
      '830 Hillview Ct #225
Milpitas, CA 95035',
      'MILPITAS',
      'CA',
      'Call 408-966-9480 when at door.',
      'Yes',
      '37.4362733',
      '-121.892281'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sequoia Home Health and Hospice'
        AND o.latitude = '37.4362733'
        AND o.longitude = '-121.892281'));

COMMIT;
