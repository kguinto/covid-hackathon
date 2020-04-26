
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
      'Providence Saint John''s Health Center ',
      '2121 Santa Monica Blvd 1st Floor
Santa Monica, CA 90404',
      'Santa Monica',
      'CA',
      'Drop off or mail to Dr. Paul Natterson''s attention. Mailing address: Providence Saint John''s Health Center, 2121 Santa Monica Blvd, Santa Monica, CA 90404',
      'Yes',
      '34.0307739',
      '-118.4796445'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Saint John''s Health Center '
        AND o.latitude = '34.0307739'
        AND o.longitude = '-118.4796445'));

COMMIT;
