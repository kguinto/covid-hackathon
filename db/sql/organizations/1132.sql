
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
      'Hospice of the Piedmont',
      '675 Peter Jefferson Pkwy #300
Charlottesville, VA 22911',
      'Charlottesville',
      'VA',
      'Drop on third floor',
      'No',
      '38.0236661',
      '-78.4376251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospice of the Piedmont'
        AND o.latitude = '38.0236661'
        AND o.longitude = '-78.4376251'));

COMMIT;
