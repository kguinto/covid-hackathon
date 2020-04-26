
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
      'Finger Lakes Health',
      '196 North St
Geneva, NY 14456',
      'Geneva',
      'NY',
      'Donated supplies can also be dropped off at the Geneva General Hospital loading dock, located behind the hospital. Please mark them Attention Lara Turbide, Community Services. The loading dock is open Monday – Friday from 8:00 a.m. – 3:00 p.m.',
      '',
      '42.876489',
      '-76.9883041'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Finger Lakes Health'
        AND o.latitude = '42.876489'
        AND o.longitude = '-76.9883041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Finger Lakes Health'
        AND o.latitude = '42.876489'
        AND o.longitude = '-76.9883041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Finger Lakes Health'
        AND o.latitude = '42.876489'
        AND o.longitude = '-76.9883041'));

COMMIT;
