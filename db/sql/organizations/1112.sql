
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
      'Kinder Hearts Home Health and Hospice',
      '842 N Mockingbird Ln
Abilene, TX 79603',
      'Abilene',
      'TX',
      'Please call 325-672-6135 and curbside procedures will take place.',
      'Yes',
      '32.4586665',
      '-99.7583715'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable rain coats',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kinder Hearts Home Health and Hospice'
        AND o.latitude = '32.4586665'
        AND o.longitude = '-99.7583715'));

COMMIT;
