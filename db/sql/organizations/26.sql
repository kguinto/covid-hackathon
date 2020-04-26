
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
      'Pacific Heart Institute ',
      '2001 Santa Monica Blvd, Suite 280W
Santa Monica, CA 90404',
      'Santa Monica',
      'CA',
      'Call 310-829-7678 and ask for Lan for curbside drop off, or mail to Pacific Heart Institute, 2001 Santa Monica Blvd, Suite 280W, Santa Monica, CA 90404',
      'Yes',
      '34.0290544',
      '-118.4799639'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disinfectant wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Heart Institute '
        AND o.latitude = '34.0290544'
        AND o.longitude = '-118.4799639'));

COMMIT;
