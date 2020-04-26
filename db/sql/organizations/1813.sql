
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
      'St. Elizabeth''s Medical Center',
      '736 Cambridge St
Brighton, MA 02135',
      'Boston',
      'MA',
      'Please contact us at stelizabethsppe@gmail.com or contact the chief medical resident at 617-789-5089 to coordinate supply drop-off. The chief resident can also be reach at the pager chief pager 49500',
      'Yes',
      '42.3488724',
      '-71.1473582'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Elizabeth''s Medical Center'
        AND o.latitude = '42.3488724'
        AND o.longitude = '-71.1473582'));

COMMIT;
