
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
      'The Queen''s Medical Center',
      '1301 Punchbowl St
Honolulu, HI 96813',
      'Honolulu',
      'HI',
      'Curbside.  Mahalo for protecting our healthcare workers so they can keep protecting you!',
      'Yes',
      '21.3084698',
      '-157.8538581'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Not yet collecting homemade masks.',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Queen''s Medical Center'
        AND o.latitude = '21.3084698'
        AND o.longitude = '-157.8538581'));

COMMIT;
